package rules

import (
	"encoding/xml"
	"fmt"
	"io/ioutil"
	"os"
)

//Aix 主机规则文件名称
const aixRulesFileName = "conf/AixRules.xml"

//Linux 主机规则文件名称
const linuxRulesFileName = "conf/LinuxRules.xml"

//Aix 主机规则数据全局变量
var AixHostRules HostCommands

//Linux 主机规则数据全局变量
var LinuxHostRules HostCommands

type HostCommand struct {
	//GUID
	CommandId string
	//命令名称
	CommandName string
	//命令文本
	CommandText string
	//系统版本
	OsVersion string
	//Oracle 版本
	OracleVersion string
	//是否执行
	IsExec bool
	//备注
	Remark string
}

type HostCommands struct {
	XMLName  xml.Name      `xml:"hostRules"`
	Version  string        `xml:"version,attr"`
	Encoding string        `xml:"encoding,attr"`
	HostRule []HostCommand `xml:"hostRule"`
}

//加载Linux规则命令
func LoadLinuxRules() bool {
	fmt.Println("Linux Host Rules file Name: " + linuxRulesFileName)
	var isOk = true
	if _, err := os.Stat(linuxRulesFileName); os.IsNotExist(err) {
		isOk = false
	}
	if isOk {
		//存在文件读取到全局变量中
		file, err := os.Open(linuxRulesFileName)
		if err != nil {
			fmt.Printf("file: %s", err)
			isOk = false
		}
		defer file.Close()
		data, err := ioutil.ReadAll(file)
		if err != nil {
			fmt.Printf("data %s", err)
			isOk = false
		}
		err = xml.Unmarshal(data, &LinuxHostRules)
		if err != nil {
			isOk = false
		}
		fmt.Printf("LinuxHostRules %s", LinuxHostRules.Encoding)

	} else {
		//不存在需要创建文件
		file, err := os.Create(linuxRulesFileName)
		if err != nil {
			isOk = false
		}
		defer file.Close()
		//初始化空的数据
		LinuxHostRules.Version = "1.0"
		LinuxHostRules.Encoding = "utf-8"
		output, err := xml.MarshalIndent(LinuxHostRules, "  ", "    ")
		err = ioutil.WriteFile(linuxRulesFileName, output, 0666) //写入文件(字节数组)
		if err != nil {
			isOk = false
		}

	}
	return isOk
}

//加载Aix规则命令
func LoadAixRules() bool {
	fmt.Println("Aix Host Rules file Name: " + aixRulesFileName)
	var isOk = true
	if _, err := os.Stat(aixRulesFileName); os.IsNotExist(err) {
		isOk = false
	}
	if isOk {
		//存在文件读取到全局变量中
		file, err := os.Open(aixRulesFileName)
		if err != nil {
			fmt.Printf("file: %s", err)
			isOk = false
		}
		defer file.Close()
		data, err := ioutil.ReadAll(file)
		if err != nil {
			fmt.Printf("data %s", err)
			isOk = false
		}
		err = xml.Unmarshal(data, &AixHostRules)
		if err != nil {
			isOk = false
		}
		fmt.Printf("Aix Host Rules %s", AixHostRules.Encoding)

	} else {
		//不存在需要创建文件
		file, err := os.Create(aixRulesFileName)
		if err != nil {
			isOk = false
		}
		defer file.Close()
		//初始化空的数据
		AixHostRules.Version = "1.0"
		AixHostRules.Encoding = "utf-8"
		output, err := xml.MarshalIndent(AixHostRules, "  ", "    ")
		err = ioutil.WriteFile(aixRulesFileName, output, 0666) //写入文件(字节数组)
		if err != nil {
			isOk = false
		}

	}
	return isOk
}

//添加一条Aix系统巡检命令
func (this *HostCommands) AddAixCmd(cmd HostCommand) bool {
	return true
}

//删除一条Aix系统巡检命令
func (this *HostCommands) DelAixCmd(cmdId string) bool {
	return true
}

//修改一条Aix系统巡检命令
func (this *HostCommands) ModifyAixCmd(cmd HostCommand) bool {
	return true
}

//查询一条Aix系统巡检命令
func (this *HostCommands) AixCmd(cmdId string) (cmd HostCommand) {
	return cmd
}

//查询全部的Aix巡检命令
func (this *HostCommands) AixCmds() bool {
	return true
}

//添加一条Linux系统巡检命令
func (this *HostCommands) AddLinuxCmd(cmd HostCommand) bool {
	return true
}

//删除一条Linux系统巡检命令
func (this *HostCommands) DelLinuxCmd(cmdId string) bool {
	return true
}

//修改一条Linux系统巡检命令
func (this *HostCommands) ModifyLinuxCmd(cmd HostCommand) bool {
	return true
}

//查询一条Linux系统巡检命令
func (this *HostCommands) LinuxCmd(cmdId string) (cmd HostCommand) {
	return cmd
}

//查询全部的Linux巡检命令
func (this *HostCommands) LinuxCmds() bool {
	return true
}
