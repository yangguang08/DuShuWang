﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;

namespace test
{
	public class Global : System.Web.HttpApplication
	{

		protected void Application_Start(object sender, EventArgs e)
		{
			Application["user_sessions"] = 0;
		}

		protected void Session_Start(object sender, EventArgs e)
		{
			Application.Lock();
			Application["user_sessions"] = (int)Application["user_sessions"] + 1;
			Application.UnLock();
		}

		protected void Application_BeginRequest(object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(object sender, EventArgs e)
		{

		}

		protected void Application_Error(object sender, EventArgs e)
		{

		}

		protected void Session_End(object sender, EventArgs e)
		{
			Application.Lock();
			Application["user_sessions"] = (int)Application["user_sessions"] - 1;
			Application.UnLock();
		}

		protected void Application_End(object sender, EventArgs e)
		{

		}
	}
}