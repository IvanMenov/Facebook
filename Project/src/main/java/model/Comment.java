package model;

public class Comment {

	private int matchingPostId;
	private String text;
	private String email;
	
	public Comment() {
		
	}
	
	public Comment(int postId, String text, String email) {
		super();
		this.matchingPostId = postId;
		this.text = text;
		this.email = email;
	}

	public int getMatchingPostId() {
		return matchingPostId;
	}

	public void setMatchingPostId(int postId) {
		if(postId > 0) {
			this.matchingPostId = postId;
		}
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		if(text != null) {
			this.text = text;
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		if(email != null) {
			this.email = email;
		}
	}

	@Override
	public String toString() {
		return "Comment [matchingPostId=" + matchingPostId + ", text=" + text + ", email=" + email + "]";
	}
	
	

}
