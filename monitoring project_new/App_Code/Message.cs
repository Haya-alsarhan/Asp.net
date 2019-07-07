using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;

using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for Message
/// </summary>
public class Message
{
	public Message()
	{
		
	}
    public void ShowMessage(string messageText)
    {
        Page page = HttpContext.Current.Handler as Page;
        ScriptManager.RegisterStartupScript(page, page.GetType(), "", "apprise('" + messageText + "',{'animate':true,'textOk':'موافق'});", true);
    }
            
}