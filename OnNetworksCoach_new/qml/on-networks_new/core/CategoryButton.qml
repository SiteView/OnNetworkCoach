import QtQuick 2.0

Rectangle {
    id: categoryBtn
    width: 200; height: 35; color: "white"
    property string textContent: ""
    property bool isOnClicked: false
    signal pressed()

    function color00()
    {
        if(textContent == "Internet") {color0 = "green"; color1 = color2 = color3 = color4 = color5 = color6 = "white" }
        if(textContent == "Wifi Setting") {color1 = "green"; color0 = color2 = color3 = color4 = color5 = color6 = "white" }
        if(textContent == "Password Setting") {color2 = "green"; color1 = color0 = color3 = color4 = color5 = color6 = "white" }
        if(textContent == "Network Map") {color3 = "green"; color1 = color2 = color0 = color4 = color5 = color6 = "white" }
        if(textContent == "Router Setting") {color4 = "green"; color1 = color2 = color3 = color0 = color5 = color6 = "white" }
        if(textContent == "Support") {color5 = "green"; color1 = color2 = color3 = color4 = color0 = color6 = "white" }
        if(textContent == "Back MainPage") {color6 = "green"; color1 = color2 = color3 = color4 = color5 = color0 = "white" }
    }
    function visible00()
    {
        if(textContent == "Internet") {visible0 = true; visible1 = visible2 = visible3 = visible4 = visible5 = false }
        if(textContent == "Wifi Setting") {visible1 = true; visible0 = visible2 = visible3 = visible4 = visible5 = false }
        if(textContent == "Password Setting") {visible2 = true; visible1 = visible0 = visible3 = visible4 = visible5 = false }
        if(textContent == "Network Map") {visible3 = true; visible1 = visible2 = visible0 = visible4 = visible5 = false }
        if(textContent == "Router Setting") {visible4 = true; visible1 = visible2 = visible3 = visible0 = visible5 = false }
        if(textContent == "Support") {visible5 = true; visible1 = visible2 = visible3 = visible4 = visible0 = false }
    }

    Text {
        id: categorytextContent; x: 10
        text: textContent
        font { family: "Times New Roman"; pointSize: 15 }
        color: isOnClicked ? "green" : "black"
        anchors.verticalCenter: parent.verticalCenter
    }
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            categoryBtn.pressed()
            color00()
            visible00()
            parent.state = "onClickedState"
        }
    }
    states: [
        State {
            name: "normalState"
            PropertyChanges {
                target: categoryBtn
                color: "lightblue"
            }
        } ,
        State {
            name: "onClickedState"
            PropertyChanges {
                target: categoryBtn
                color: "green"  //should be gradient
            }
        }
    ]
}


