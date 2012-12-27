import QtQuick 1.0

Item {
    width: 125
    height: 250
    Rectangle {
        id: languageRect
        color: "#e8e3e3"
        anchors.fill: parent
//        MouseArea {
//            id: mouseArea
//            anchors.fill: parent
//            hoverEnabled: true
//            onExited: languageList.visible = false
//        }
    }
    // 模型
    ListModel {
        id: model
        ListElement { title: "English" }
        ListElement { title: "Deutsch" }
        ListElement { title: "Français" }
        ListElement { title: "Русский" }
        ListElement { title: "Español" }
        ListElement { title: "Italiano" }
        ListElement { title: "Nederlands" }
        ListElement { title: "Português" }
        ListElement { title: "Čeština" }
        ListElement { title: "فارسی" }
    }

    // 视图
    ListView {
        id: view
        anchors.fill: parent
        //anchors.rightMargin: 12
        model: model
        delegate: delegate
    }
    // 代理
    Component {
        id: delegate
        // 列表项
        Rectangle {
            width: parent.width
            height: 20
            color: "#e8e3e3"

            Text {
                anchors.left: parent.left; anchors.leftMargin: 5
                text: title
                font.family: "Helvetica"
                font.pointSize: 12
                color: "black"
            }
            Rectangle { width: parent.width; height: 1; color: "black"}
            MouseArea {
                id: mouseArea
                anchors.fill: parent
                hoverEnabled: true
                onEntered: parent.color = "blue"
                onExited: parent.color = "#e8e3e3"
                onClicked: {
                    languageDisplay.text = title
                }
            }
        }
    }
}
