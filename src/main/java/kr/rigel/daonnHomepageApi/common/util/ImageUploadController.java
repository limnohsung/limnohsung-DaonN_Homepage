package kr.rigel.daonnHomepageApi.common.util;

import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.rigel.daonnHomepageApi.common.util.ImageViewer;

@Controller
public class ImageUploadController {
	
	
	@Value("#{props['daonn.uploadPath']}")
	private String uploadPath;
	
	
	private static final Logger logger = LoggerFactory.getLogger(ImageUploadController.class);
	@RequestMapping("/imageUpload.do")
	public void imageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam Map<String, Object> map, MultipartFile upload) throws Exception{
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; chatset=utf-8");
		
		//랜덤 함수
		UUID uid = UUID.randomUUID();
		//업로드할 파일이름
		String fileName=uid.toString() + "_" + upload.getOriginalFilename();

		//파일을 바이트 배열로 변환
		byte[] bytes=upload.getBytes();
		//파일업로드 디렉토리(배포경로)
		//String uploadPath="C:\\Users\\Jason\\eclipse\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\gomindpratice\\upload\\";
			
		OutputStream out=new FileOutputStream(new File(uploadPath+fileName));
		//서버로 업로드
		out.write(bytes);
		
		String imgOriginalPath= uploadPath+fileName;           // 원본 이미지 파일명
        String imgTargetPath= uploadPath+fileName;    // 새 이미지 파일명
        String imgFormat = "jpg";                             // 새 이미지 포맷. jpg, gif 등
        int newWidth = 1200;                                  // 변경 할 넓이
        int newHeight = 700;                                 // 변경 할 높이
        String mainPosition = "W";                             // W:넓이중심, H:높이중심, X:설정한 수치로(비율무시)
 
        Image image;
        int imageWidth;
        int imageHeight;
        double ratio;
        int w;
        int h;
 
        try{
            // 원본 이미지 가져오기
            image = ImageIO.read(new File(imgOriginalPath));
 
            // 원본 이미지 사이즈 가져오기
            imageWidth = image.getWidth(null);
            imageHeight = image.getHeight(null);
 
            if(mainPosition.equals("W")){    // 넓이기준
 
                ratio = (double)newWidth/(double)imageWidth;
                w = (int)(imageWidth * ratio);
                h = (int)(imageHeight * ratio);
 
            }else if(mainPosition.equals("H")){ // 높이기준
 
                ratio = (double)newHeight/(double)imageHeight;
                w = (int)(imageWidth * ratio);
                h = (int)(imageHeight * ratio);
 
            }else{ //설정값 (비율무시)
 
                w = newWidth;
                h = newHeight;
            }
 
            // 이미지 리사이즈
            // Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
            // Image.SCALE_FAST    : 이미지 부드러움보다 속도 우선
            // Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
            // Image.SCALE_SMOOTH  : 속도보다 이미지 부드러움을 우선
            // Image.SCALE_AREA_AVERAGING  : 평균 알고리즘 사용
            Image resizeImage = image.getScaledInstance(w, h, Image.SCALE_SMOOTH);
 
            // 새 이미지  저장하기
            BufferedImage newImage = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
            Graphics g = newImage.getGraphics();
            g.drawImage(resizeImage, 0, 0, null);
            g.dispose();
            ImageIO.write(newImage, imgFormat, new File(imgTargetPath));
            
//            if(imgTargetPath.indexOf("fokCamera") != -1) {
//            	BufferedImage oldImage = ImageIO.read(new FileInputStream(imgTargetPath));
//
//                BufferedImage newImage1 = new BufferedImage(oldImage.getHeight(),oldImage.getWidth(), oldImage.getType());
//
//                Graphics2D graphics = (Graphics2D) newImage1.getGraphics();
//
//                graphics.rotate(Math.toRadians(90), newImage1.getWidth() / 2, newImage1.getHeight() / 2);
//
//                graphics.translate((newImage1.getWidth() - oldImage.getWidth()) / 2, (newImage1.getHeight() - oldImage.getHeight()) / 2);
//
//                graphics.drawImage(oldImage, 0, 0, oldImage.getWidth(), oldImage.getHeight(), null);
//
//                ImageIO.write(newImage1, imgFormat, new FileOutputStream(imgTargetPath));
//            }
            
            
            
 
        }catch (Exception e){
 
            e.printStackTrace();
 
        }
		
		
		//클라이언트에 결과 표시 CKEditorFuncNum 고정
		String callback=request.getParameter("CKEditorFuncNum");
		//서버=>클라이언트로 텍스트 전송(자바스크립트 실행)
		PrintWriter printWriter=response.getWriter();
		String fileUrl=request.getContextPath() + "/uploadImageView.do?edimage=" + fileName;
		//String fileUrl=request.getContextPath() + "http://172.16.75.45:8080/uploadImageView.do?edimage=" + fileName;
		//String fileUrl=request.getContextPath() + "/" + fileName;
		printWriter.println("<script>window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + fileUrl + "','이미지가 업로드되었습니다.')"+"</script>");
		// 전달
		printWriter.flush();
	}
	
	@RequestMapping(value="/ajax/uploadImg.do", consumes = { "multipart/form-data" })
	public ModelAndView newuploadImg(HttpServletRequest request, HttpServletResponse response, @RequestParam("myFileKey") MultipartFile upload) throws Exception{
    	ModelAndView mv = new ModelAndView("jsonView");
    	
    	response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; chatset=utf-8");
		
		//랜덤 함수
		UUID uid = UUID.randomUUID();
		//업로드할 파일이름
		String fileName=uid.toString() + "_" + upload.getOriginalFilename();

		//파일을 바이트 배열로 변환
		byte[] bytes=upload.getBytes();
		//파일업로드 디렉토리(배포경로)
		//String uploadPath="C:\\Users\\Jason\\eclipse\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\gomindpratice\\upload\\";
			
		OutputStream out=new FileOutputStream(new File(uploadPath+fileName));
		//서버로 업로드
		out.write(bytes);
		
		String imgOriginalPath= uploadPath+fileName;           // 원본 이미지 파일명
        String imgTargetPath= uploadPath+fileName;    // 새 이미지 파일명
        String imgFormat = "jpg";                             // 새 이미지 포맷. jpg, gif 등
        int newWidth = 600;                                  // 변경 할 넓이
        int newHeight = 700;                                 // 변경 할 높이
        String mainPosition = "W";                             // W:넓이중심, H:높이중심, X:설정한 수치로(비율무시)
 
        Image image;
        int imageWidth;
        int imageHeight;
        double ratio;
        int w;
        int h;
 
        try{
            // 원본 이미지 가져오기
            image = ImageIO.read(new File(imgOriginalPath));
 
            // 원본 이미지 사이즈 가져오기
            imageWidth = image.getWidth(null);
            imageHeight = image.getHeight(null);
 
            if(mainPosition.equals("W")){    // 넓이기준
 
                ratio = (double)newWidth/(double)imageWidth;
                w = (int)(imageWidth * ratio);
                h = (int)(imageHeight * ratio);
 
            }else if(mainPosition.equals("H")){ // 높이기준
 
                ratio = (double)newHeight/(double)imageHeight;
                w = (int)(imageWidth * ratio);
                h = (int)(imageHeight * ratio);
 
            }else{ //설정값 (비율무시)
 
                w = newWidth;
                h = newHeight;
            }
 
            // 이미지 리사이즈
            // Image.SCALE_DEFAULT : 기본 이미지 스케일링 알고리즘 사용
            // Image.SCALE_FAST    : 이미지 부드러움보다 속도 우선
            // Image.SCALE_REPLICATE : ReplicateScaleFilter 클래스로 구체화 된 이미지 크기 조절 알고리즘
            // Image.SCALE_SMOOTH  : 속도보다 이미지 부드러움을 우선
            // Image.SCALE_AREA_AVERAGING  : 평균 알고리즘 사용
            Image resizeImage = image.getScaledInstance(w, h, Image.SCALE_SMOOTH);
 
            // 새 이미지  저장하기
            BufferedImage newImage = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
            Graphics g = newImage.getGraphics();
            g.drawImage(resizeImage, 0, 0, null);
            g.dispose();
            ImageIO.write(newImage, imgFormat, new File(imgTargetPath));
            
            if(imgTargetPath.indexOf("fokCamera") != -1) {
            	BufferedImage oldImage = ImageIO.read(new FileInputStream(imgTargetPath));

                BufferedImage newImage1 = new BufferedImage(oldImage.getHeight(),oldImage.getWidth(), oldImage.getType());

                Graphics2D graphics = (Graphics2D) newImage1.getGraphics();

                graphics.rotate(Math.toRadians(90), newImage1.getWidth() / 2, newImage1.getHeight() / 2);

                graphics.translate((newImage1.getWidth() - oldImage.getWidth()) / 2, (newImage1.getHeight() - oldImage.getHeight()) / 2);

                graphics.drawImage(oldImage, 0, 0, oldImage.getWidth(), oldImage.getHeight(), null);

                ImageIO.write(newImage1, imgFormat, new FileOutputStream(imgTargetPath));
            }
            
            
            
 
        }catch (Exception e){
 
            e.printStackTrace();
 
        }
    	
    	mv.addObject("path", fileName);
        
    	return mv;
    }
	
	@RequestMapping(value = "/uploadImageView.do", produces = "image/jpg")
    public @ResponseBody void uploadImageView(HttpServletRequest request, @RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {

		/*
		 * String user_id = (String) request.getSession().getAttribute("user_id");
		 * map.put("user_id", user_id);
		 */
		String image_path = (String) map.get("edimage");
    
		ImageViewer.imageView(uploadPath + image_path, response);

    }
}
