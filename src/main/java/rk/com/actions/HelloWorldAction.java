/**
 * 
 */
package rk.com.actions;

import rk.com.forms.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jlue.struts.BaseAction;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/**
 * 
 * @author 
 *
 */
public class HelloWorldAction extends BaseAction {
	/**
	 *	Processing request.
	 */
	public String index(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Hello world!");
		//binding(dest, form);

		return SUCCESS;
	}
	
	public String show(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Into action: Show");
		
		//XXX

		return SUCCESS;
	}
	
	public String edit(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Into action: Edit");
		
		//XXX

		return SUCCESS;
	}
	
	public String neu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Into action: New");
		
		//XXX

		return SUCCESS;
	}
	
	public String create(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Into action: Create");
		
		//XXX

		return SUCCESS;
	}
	
	public String update(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Into action: Update");
		
		//XXX

		return SUCCESS;
	}
	
	public String destory(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HelloWorldForm theForm = (HelloWorldForm)form;
		theForm.setMessage("Into action: Destory");
		
		//XXX

		return SUCCESS;
	}
}
