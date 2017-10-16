package com.why.vo;

public class VO4LiveCommentAddParam {
		private String comment_username;
		private String comment_liveid;
		private String comment_content;
		private String comment_date;
		
			
		public VO4LiveCommentAddParam() {
			super();
		}
		
		public VO4LiveCommentAddParam(String comment_username,
				String comment_liveid, String comment_content,
				String comment_date) {
			super();
			this.comment_username = comment_username;
			this.comment_liveid = comment_liveid;
			this.comment_content = comment_content;
			this.comment_date = comment_date;
		}
		public String getComment_username() {
			return comment_username;
		}
		public void setComment_username(String comment_username) {
			this.comment_username = comment_username;
		}
		public String getComment_liveid() {
			return comment_liveid;
		}
		public void setComment_liveid(String comment_liveid) {
			this.comment_liveid = comment_liveid;
		}
		public String getComment_content() {
			return comment_content;
		}
		public void setComment_content(String comment_content) {
			this.comment_content = comment_content;
		}
		public String getComment_date() {
			return comment_date;
		}
		public void setComment_date(String comment_date) {
			this.comment_date = comment_date;
		}
		
		
		
		
		
}
