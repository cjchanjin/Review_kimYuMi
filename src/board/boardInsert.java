package board;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import common.FileRenamePolicy;


/**
 * Servlet implementation class boardInsert
 */
@WebServlet("/boardInsert.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, 
		                 maxFileSize = 1024 * 1024 * 30,				//파일 하나 크기 
		                 maxRequestSize = 1024 * 1024 * 50)			//파일 전체 크기
public class boardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String SAVE_DIR = "upload3";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		/**
		 * * request.getServletContext().getRealPath(""); * 서버의 리얼패스를 가져옵니다. 리얼이 뭔데? *
		 * intelliJ project의 out폴더의 실제 경로를 가져 옵니다. * EX) C:\DEV\JAVA\sampleFileUpload3
		 */
		String appPath = request.getServletContext().getRealPath("/");
		/**
		 * * appPath EX) C:\DEV\JAVA\sampleFileUpload3\artifacts\web_war_exploded *
		 * File.separator * EX) \ * * SAVE_DIR * EX) uploadFiles * 다 합치면??
		 * C:\DEV\JAVA\sampleFileUpload3\artifacts\web_war_exploded/uploadFiles
		 */
		String savePath = appPath + File.separator + SAVE_DIR;
		String uploadFile = "";
		
		// 서버에 savePath에 해당하는 디렉토리가 있는지 확인해서 없으면 만들어라
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		for (Part part : request.getParts()) {
			String fileName = extractFileName(part);
			if(!fileName.equals("")) {
				uploadFile = savePath + File.separator + fileName;		//원본 파일 명
				File f = new FileRenamePolicy().rename(new File(uploadFile));
				String uploadFileName =f.getParent() + " : " + f.getName(); 	 //업로드 된 시스템 파일 명
				part.write(uploadFileName);
			}
		}
		response.getWriter().append(uploadFile + "<br>" + title + "<br>" + contents);
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}
