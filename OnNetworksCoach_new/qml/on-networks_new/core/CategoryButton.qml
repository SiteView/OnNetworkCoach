import QtQuick 1.0

Rectangle {
    id: categoryBtn
    width: 200; height: 35; color: "white"
    property string textContent: ""
    property string image: "sub-menu-select-bg.png"
    property bool isOnClicked: false
    signal pressed()

    function image00()
    {
        if(textContent == "Internet") {image0 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image4 = image5 = "sub-menu-select-bg.png" }
        if(textContent == "Wifi Setting") {image1 = "sub-menu-select-bg.gif"; image0 = image2 = image3 = image4 = image5 = "sub-menu-select-bg.png" }
        if(textContent == "Password Setting") {image2 = "sub-menu-select-bg.gif"; image1 = image0 = image3 = image4 = image5 = "sub-menu-select-bg.png" }
        if(textContent == "Network Map") {image3 = "sub-menu-select-bg.gif"; image1 = image2 = image0 = image4 = image5 = "sub-menu-select-bg.png" }
        if(textContent == "Router Setting") {image4 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image0 = image5 = "sub-menu-select-bg.png" }
        if(textContent == "Support") {image5 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image4 = image0 = "sub-menu-select-bg.png" }
        if(textContent == "Back MainPage") {image6 = "sub-menu-select-bg.gif"; image1 = image2 = image3 = image4 = image5 = image0 = "sub-menu-select-bg.png" }
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

    BorderImage {
        id: categoryButtonImage
        source: "../images/" + image
//        width: 100; height: 100
        anchors.fill: parent
        border.left: 5; border.top: 5
        border.right: 5; border.bottom: 5
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
            //color00()
            image00()
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
                //color: "green"  //should be gradient
                image: "sub-menu-select-bg.gif"

            }
        }
    ]
}


