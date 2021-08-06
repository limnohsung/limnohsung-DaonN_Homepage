package kr.rigel.daonnHomepageApi.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;


public class ImageViewer {
    private static Log log = LogFactory.getLog(ImageViewer.class);
    public static final String IMG_CONTENT_TYPE_JPG = "image/jpeg";
    public static final String IMG_CONTENT_TYPE_GIF = "image/gif";
    public static final String IMG_CONTENT_TYPE_BMP = "image/bmp";
    public static final String IMG_CONTENT_TYPE_PNG = "image/png";
    public static final String IMG_CONTENT_TYPE_WBMP = "image/vnd.wap.wbmp";

    public static void imageView(String imagePathP, HttpServletResponse response)
      throws Exception
    {
        String newFpath =  imagePathP;
    	log.debug("imagePathP======"+imagePathP);

        String extType = "";
      if (newFpath.lastIndexOf(".") >= 0) {
        extType = newFpath.substring(newFpath.lastIndexOf(".") + 1);
      }
  		log.debug("extType====" + extType);
      String contentType = "";
      response.setStatus(200);
      if ("/jpg/jpeg/jpe/jfif/".indexOf(extType.toLowerCase()) >= 0)
        contentType = "image/jpeg";
      else if ("/gif/".indexOf(extType.toLowerCase()) >= 0)
        contentType = "image/gif";
      else if ("/bmp/".indexOf(extType.toLowerCase()) >= 0)
        contentType = "image/bmp";
      else if ("/png/".indexOf(extType.toLowerCase()) >= 0)
          contentType = "image/png";
      else if ("/wbmp/".indexOf(extType.toLowerCase()) >= 0)
        contentType = "image/vnd.wap.wbmp";
      else {
        throw new IOException("The file is not an image.");
      }

      File imgFile = new File(imagePathP);
      if ((!imgFile.exists()) || (imgFile.isDirectory())) {
        return;
      }
      
      
        FileInputStream fis = null;

        try {
            fis = new FileInputStream(imgFile);

            imageView(fis, response, contentType);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null)
                fis.close();
        }

        try {
            if (fis != null)
                fis.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null)
                fis.close();
        }
    }

    
    
    public static void imageView(InputStream is, HttpServletResponse response, String imageContentType)
      throws IOException
    {
      response.setContentType(imageContentType);
      write(is, response.getOutputStream());
    }

    public static void fileDown(String filePath, String fileName, HttpServletRequest request, HttpServletResponse response)
      throws IOException
    {
      String browser = getBrowser(request);
      String encodedFilename = "";

      if (browser.equals("MSIE")) {
        encodedFilename = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
      } else if (browser.equals("Firefox")) {
        encodedFilename = "\"" + new String(fileName.getBytes("UTF-8"), "8859_1") + "\"";
      } else if (browser.equals("Opera")) {
        encodedFilename = "\"" + new String(fileName.getBytes("UTF-8"), "8859_1") + "\"";
      } else if (browser.equals("Chrome")) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < fileName.length(); i++) {
          char c = fileName.charAt(i);
          if (c > '~')
            sb.append(URLEncoder.encode(""+c, "UTF-8"));
          else {
            sb.append(c);
          }
        }
        encodedFilename = sb.toString();
      }
      else {
        throw new IOException("Not supported browser");
      }
      response.setStatus(200);
      response.setHeader("Content-Type", "application/octet-stream");
      response.setHeader("Content-Disposition", "attachment; filename=" + encodedFilename);
      response.setHeader("Content-Description", "JSP Generated Data");

      File fFile = new File(filePath);
      if ((!fFile.exists()) || (fFile.isDirectory())) {
        return;
      }
      //  
      FileInputStream fis = null;
      ServletOutputStream sos = null;
      
        try {
            fis = new FileInputStream(fFile);
            sos = response.getOutputStream();
            write(fis, sos);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null)
                fis.close();
            if (sos != null)
                sos.close();
        }

        try {
            if(fis!=null)
                fis.close();
            if(sos!=null)
                sos.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (fis != null)
                fis.close();
            if (sos != null)
                sos.close();
        }
    }

    public static void write(InputStream is, OutputStream os)
      throws IOException
    {
      if ((is == null) || (os == null)) {
        return;
      }
      byte[] buf = new byte[1024];
      int iReadSize = 0;
      try {
        while ((iReadSize = is.read(buf)) != -1) {
          os.write(buf, 0, iReadSize);
        }
        os.flush();
      } catch (IOException ie) {
        log.error(ie);
        throw ie; } finally {
        try {
          if (is != null) is.close();  } catch (IOException localIOException1) {
        }try {
          if (os != null) os.close();
        }
        catch (IOException localIOException2)
        {
        }
      }
    }

    private static String getBrowser(HttpServletRequest request)
    {
      String header = request.getHeader("User-Agent");
      if (header.indexOf("MSIE") > -1)
        return "MSIE";
      if (header.indexOf("Chrome") > -1)
        return "Chrome";
      if (header.indexOf("Opera") > -1) {
        return "Opera";
      }
      return "Firefox";
    }
}
