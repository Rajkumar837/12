/**
 * 
 */
package rk.com.forms;

import org.apache.struts.action.ActionForm;

/**
 * @author 
 * @version 1.00
 * 
 */
public class HelloWorldForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	private String message;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
