import QtQuick 2.0

BorderImage {
    id: mainBtn

    property string initialImage: ""
    property string hoverImage: ""
    property string selectedImage: ""
    property string image: ""


    signal clicked();
    source: "../iamges/" + image + ".png"
    width: 260 ; height: 85
    border.left: 5; border.top: 5
    border.right: 5; border.bottom: 5

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: image = hoverImage
        onExited: image = initialImage
        onClicked: { mainBtn.clicked()}
        /*窗口mainBtn能移动*/
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
