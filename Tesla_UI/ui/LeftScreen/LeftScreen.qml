import QtQuick 2.15

Rectangle{
    id: leftScreen
    anchors{
        left: parent.left
        right: rightScreen.left
        top: parent.top
        bottom: bottomBar.bottom
    }
    color: "white"
    //width: parent.width * .4

    Image{
        id: carRender
        anchors.centerIn:parent
        source: "qrc:/img/ui/assets/carRender.png"
        width: parent.width * .75
        fillMode: Image.PreserveAspectFit
    }
}
