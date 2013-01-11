import QtQuick 1.1

BorderImage {
    id: categoryButtonImage
    width: 200; height: 35
    source: "../images/" + image

    property string textContent: ""
    property string image: "category-normal-bg.png"
    property bool isOnClicked: false
    signal pressed()

    function image00()
    {
        if(textContent == "Internet") {image0 = "category-select-bg.png"; image1 = image2 = image3 = image4 = image5 = "category-normal-bg.png" }
        if(textContent == "Wifi Setting") {image1 = "category-select-bg.png"; image0 = image2 = image3 = image4 = image5 = "category-normal-bg.png" }
        if(textContent == "Password Setting") {image2 = "category-select-bg.png"; image1 = image0 = image3 = image4 = image5 = "category-normal-bg.png" }
        if(textContent == "Network Map") {image3 = "category-select-bg.png"; image1 = image2 = image0 = image4 = image5 = "category-normal-bg.png" }
        if(textContent == "Router Setting") {image4 = "category-select-bg.png"; image1 = image2 = image3 = image0 = image5 = "category-normal-bg.png" }
        if(textContent == "Support") {image5 = "category-select-bg.png"; image1 = image2 = image3 = image4 = image0 = "category-normal-bg.png" }
        if(textContent == "Back MainPage") {image6 = "category-select-bg.png"; image1 = image2 = image3 = image4 = image5 = image0 = "category-normal-bg.png" }
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
            categoryButtonImage.pressed()
            image00()
            visible00()
        }
    }
}


