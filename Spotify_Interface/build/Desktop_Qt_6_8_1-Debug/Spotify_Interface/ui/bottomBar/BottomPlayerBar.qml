import QtQuick 2.15

Rectangle{
    id:bottomPlayerBar
    color: "black"
    width: parent.width
    height: 75
    //opacity: 0.8

    anchors{
        bottom: parent.bottom
        //top: mainWindow.bottom
        topMargin: 10
    }

        Row{
            id: playerController
            anchors.centerIn: parent
            spacing: 20
            bottomPadding: 15

            property int scaleDownValue: 32

            Image {
                id: shuffleButton
                source: "qrc:/assets/shuffle.png"
                height: 32/1.5
                width: 32/1.5
                anchors.verticalCenter: prevButton.verticalCenter
            }

            Image {
                id: prevButton
                source: "qrc:/assets/prev-button.png"
                height: 16
                width: 16
                anchors.verticalCenter: playerButton.verticalCenter
            }
            Image {
                id: playerButton
                source: "qrc:/assets/play-button(1).png"
                height: 32
                width: 32

            }
            Image {
                id: nextButton
                source: "qrc:/assets/next-button.png"
                height: 16
                width: 16
                anchors.verticalCenter: playerButton.verticalCenter

            }
            Image {
                id: repeatButton
                source: "qrc:/assets/repeat_button.png"
                height: 32/1.5
                width: 32/1.5
                anchors.verticalCenter: nextButton.verticalCenter
            }
        }
        Rectangle{
            id:progressBar
            height:5
            width:400
            color: "white"
            radius: 15
            anchors{
                top: playerController.bottom
                horizontalCenter: parent.horizontalCenter
            }

        }


}
