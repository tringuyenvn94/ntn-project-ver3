package entity;

import java.util.Date;

public class TopicEntity {

	private Date dateCreated;
	private String content;
	private String type;
	private String title;
	private String author;
	private String email;
	private String url;

	public TopicEntity(String content, String type, String title, String url) {
		this.content = content;
		this.type = type;
		this.title = title;
		this.dateCreated = new Date();
		this.url = url;
	}

	public TopicEntity() {
		this.dateCreated = new Date();
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
