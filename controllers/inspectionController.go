package controllers

import (
	"github.com/astaxie/beego"
)

type InspectionController struct {
	beego.Controller
}

func (this *InspectionController) Insp() {
	this.Layout = "ipp_layout.tpl"
	this.TplName = "main.tpl"
	this.LayoutSections = make(map[string]string)
	this.LayoutSections["Head"] = "ipp_head.tpl"
	this.LayoutSections["Menu"] = "ipp_menu.tpl"
	this.LayoutSections["Scripts"] = "ipp_scripts.tpl"
	this.LayoutSections["Content"] = "ipp_insp.tpl"
	result := struct {
		Val string
	}{"success"}
	this.Data["json"] = &result
	this.ServeJSON() //响应前端
}

//根据数据库ID获取对应的主机信息
func (this *InspectionController) ShowHostByDbId() {

}
