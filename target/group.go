package target

const GroupsFileName = "Groups.xml"

var GroupList TargetGroups

type TargetGroup struct {
	GroupId   string
	GroupName string
}

type TargetGroups struct {
	XMLName  xml.Name      `xml:"groups"`
	Version  string        `xml:"version,attr"`
	Encoding string        `xml:"encoding,attr"`
	Group    []TargetGroup `xml:"targetgroup"`
}
