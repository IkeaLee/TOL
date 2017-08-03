package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 制作人：陈茁
 */
public class UploadHandleServlet extends HttpServlet {

 public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
  String savePath = this.getServletContext().getRealPath("/WEB-INF/upload");
  String tempPath = this.getServletContext().getRealPath("/WEB-INF/temp");
  File tmpFile = new File(tempPath);
  if (!tmpFile.exists()) {
   tmpFile.mkdir();
  }

  String message = "";
  try{
   DiskFileItemFactory factory = new DiskFileItemFactory();
   factory.setSizeThreshold(1024*100);//设置缓冲区的大小为100KB，如果不指定，那么缓冲区的大小默认是10KB
   factory.setRepository(tmpFile);
   ServletFileUpload upload = new ServletFileUpload(factory);
   upload.setProgressListener(new ProgressListener(){
    public void update(long pBytesRead, long pContentLength, int arg2) {
     System.out.println("文件大小为：" + pContentLength + ",当前已处理：" + pBytesRead);

    }
   });
   upload.setHeaderEncoding("UTF-8");
   if(!ServletFileUpload.isMultipartContent(request)){
    return;
   }

   //设置上传单个文件的大小的最大值，目前是设置为1024*1024字节，也就是1MB
   upload.setFileSizeMax(1024*1024);
   //设置上传文件总量的最大值，最大值=同时上传的多个文件的大小的最大值的和，目前设置为10MB
   upload.setSizeMax(1024*1024*10);
   List<FileItem> list = upload.parseRequest(request);
   for(FileItem item : list){
    if(item.isFormField()){
     String name = item.getFieldName();
     //解决普通输入项的数据的中文乱码问题
     String value = item.getString("UTF-8");
     value = new String(value.getBytes("iso8859-1"),"UTF-8");
     System.out.println(name + "=" + value);
    }else{
     String filename = item.getName();
     System.out.println(filename);
     if(filename==null || filename.trim().equals("")){
      continue;
     }

     filename = filename.substring(filename.lastIndexOf("\\")+1);
     String fileExtName = filename.substring(filename.lastIndexOf(".")+1);
     System.out.println("上传的文件的扩展名是："+fileExtName);
     InputStream in = item.getInputStream();
     String saveFilename = makeFileName(filename);
     String realSavePath = makePath(saveFilename, savePath);
     FileOutputStream out = new FileOutputStream(realSavePath + "\\" + saveFilename);
     byte buffer[] = new byte[1024];
     int len = 0;
     while((len=in.read(buffer))>0){
      out.write(buffer, 0, len);
     }
     in.close();
     out.close();
     item.delete();        message = "文件上传成功！";
    }
   }
  }catch (FileUploadBase.FileSizeLimitExceededException e) {
   e.printStackTrace();
   request.setAttribute("message", "单个文件超出最大值！！！");
   request.getRequestDispatcher("/message.jsp").forward(request, response);
   return;
  }catch (FileUploadBase.SizeLimitExceededException e) {
   e.printStackTrace();
   request.setAttribute("message", "上传文件的总的大小超出限制的最大值！！！");
   request.getRequestDispatcher("/message.jsp").forward(request, response);
   return;
  }catch (Exception e) {
   message= "文件上传失败！";
   e.printStackTrace();
  }
  request.setAttribute("message",message);
  request.getRequestDispatcher("/message.jsp").forward(request, response);
 }


 private String makeFileName(String filename){ //2.jpg
  return UUID.randomUUID().toString() + "_" + filename;
 }

 private String makePath(String filename,String savePath){
  //得到文件名的hashCode的值，得到的就是filename这个字符串对象在内存中的地址
  int hashcode = filename.hashCode();
  int dir1 = hashcode&0xf; //0--15
  int dir2 = (hashcode&0xf0)>>4; //0-15
  String dir = savePath + "\\" + dir1 + "\\" + dir2; //upload\2\3 upload\3\5
  File file = new File(dir);
  if(!file.exists()){
   file.mkdirs();
  }
  return dir;
 }

 public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

  doGet(request, response);
 }
}