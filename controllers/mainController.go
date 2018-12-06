package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
	//检查Session
	hostIp := this.GetSession("HostIP")
	if hostIp == nil {
		this.Redirect("/signin", 302)
	}

	//	this.Data["Test"] = "主界面"
	//	this.Data["Website"] = "https://github.com/chymingyan"
	//	this.Data["Email"] = "chen_haiyan@hotmail.com"
	this.Layout = "ipp_layout.tpl"
	this.TplName = "main.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Head"] = "ipp_head.tpl"
	this.LayoutSections["Menu"] = "ipp_menu.tpl"
	this.LayoutSections["Scripts"] = "ipp_scripts.tpl"
	this.LayoutSections["Content"] = "ipp_overview.tpl"
}

func (this *MainController) Chat() {
	this.Layout = "ipp_layout.tpl"
	this.TplName = "main.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Head"] = "ipp_head.tpl"
	this.LayoutSections["Menu"] = "ipp_menu.tpl"
	this.LayoutSections["Scripts"] = "ipp_scripts.tpl"
	this.LayoutSections["Content"] = "ipp_overview.tpl"
	result := struct {
		Val string
	}{"success"}
	this.Data["json"] = &result
	this.ServeJSON() //响应前端
}

func (this *MainController) Tree() {

}
