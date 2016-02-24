/**
*
* @file
* @author   Olawoyin Samson Adewunmi
* @description Project Management System 0.0.1
* @date  JAN 06 2016
* @time 6:04 PM
*
*/

component output="false" displayname=""  {
        this.name = "tshowjkvb";
        this.applicationtimeout = createTimeSpan(0, 10, 0, 0);
        this.clientmanagement = true;
        this.clientstorage = "cookie";
        this.datasource = "tshow";
        this.sessionManagement = true;
        this.sessionTimeout = createTimeSpan(0, 4, 0, 0);
        this.loginStorage = "session";
        this.setclientcookies = true;
        this.scriptProtect = "all";
        this.ormenabled = true;

        public void function onApplicationEnd(applicationscope required){



        }

        public boolean function onApplicationStart(){
            application.tshow.category = createObject('component','com.Category').init();
            application.tshow.product = createObject('component','com.Product').init();
            application.tshow.user = createObject('component','com.User').init();
            return true;
        }

        public void function onSessionStart(){

        }

        public boolean function onRequestStart(required string targetPage){
            param name="url.limit" type="numeric" default="0";
            param name="url.pg" default="home" type="string";
            lock scope="session" type="exclusive" throwontimeout="true" timeout="10"{
                param name="session.isLogin" type="boolean" default="false";
                param name="session.User" default="";
            }

            lock scope="session" type="readonly" throwontimeout="true" timeout="10"{
                request.user = session.user ;
                request.isLogin = session.isLogin ;
            }
            param name="url.pg" type="string" default="login";
                         url.pg = Replace(url.pg,'.','/','all');

            return true;
        }

}
