import QtQuick 2.0

Rectangle {
    id: languageRect
    width: 125
    height: 300

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
        anchors.rightMargin: 12
        model: model
        delegate: delegate
        spacing: 5
    }

    // 代理
    Component {
        id: delegate

        // 列表项
        Rectangle {
            width: parent.width
            height: 20
            Text {
                anchors.centerIn: parent
                text: title
                font.pointSize: 10
                color: "black"
            }
            Rectangle { width: parent.width; height: 1; color: "black"}
        }
    }
}
