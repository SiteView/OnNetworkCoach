import QtQuick 2.0

BorderImage {
    id: mainBtn
    width: 255; height: 145

    property string initialImage: ""
    property string hoverImage: ""
    property string selectedImage: ""
    property string image: ""


    signal clicked();
    source: "../images/" + image + ".png"

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: image = hoverImage
        onExited: image = initialImage
        onClicked: { mainBtn.clicked()}
        drag.target: mainBtn
        drag.axis: Drag.XandYAxis
        drag.minimumX: 0
        drag.maximumX: mainWindow.width
        drag.minimumY: 0
        drag.maximumY: mainWindow.height
    }

    //    var buttonid
    function buttonimagechange(buttonid)
    {
        image = "buttonid" + "1";
        initialImage = "buttonid" + "1";
        hoverImage = "buttonid" + "2";
        selectedImage = "buttonid" + "3";
    }
}
