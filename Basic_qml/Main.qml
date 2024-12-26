import QtQuick

Window {
    width: 512
    height: 320
    visible: true
    title: qsTr("Simple Animation")

    property int rotationStep: 90

    BorderImage {
        id: background
        source: "qrc:/new/img/assets/background.png"
        anchors.fill:parent

    }
    Image {
        id: pole
        source: "qrc:/new/img/assets/stick.png"
        anchors.horizontalCenter:parent.horizontalCenter
        anchors.bottom:parent.bottom
    }

    Image {
        id: wheel
        source: "qrc:/new/img/assets/wheel.png"
        anchors.bottom:pole.top
        anchors.horizontalCenter:pole.horizontalCenter
        Behavior on rotation{
            NumberAnimation{
                duration:250
            }
        }

    }
    MouseArea{
        id:mouseArea
        anchors.fill:parent
        onPressed:{
            wheel.rotation +=90
        }
    }
    Item{
        anchors.fill:parent
        focus:true
        Keys.onLeftPressed:{
            console.log("move left")
            wheel.rotation -= 90
        }
        Keys.onRightPressed:{
            console.log("move right")
            wheel.rotation += 90
        }
    }

}
