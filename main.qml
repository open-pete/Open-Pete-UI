import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: mainWindow
    visible: true
    height: 600
    width: height*16/9
    title: qsTr("Open-Pete-UI")

    Image {
        id: imageBackground
        anchors.fill: parent
        source: "pics/background.jpg"
    }

    Column {
        id : col1
        anchors.centerIn: parent
        spacing: mainWindow.height / 60

        Text {
            id: timeText
            anchors.horizontalCenter: col1.horizontalCenter
            font.pixelSize: mainWindow.height/4
            font.bold: true
            text: qsTr("23:03")
        }

        Text {
            id: dateText
            anchors.horizontalCenter: col1.horizontalCenter
            font.pixelSize: mainWindow.height / 10
            font.bold: true
            text: qsTr("Montag, 01. Januar")
        }


    }

    Text {
        id: nextText
        anchors.verticalCenter: parent.verticalCenter
        x: mainWindow.width - mainWindow.width / 10
        font.pixelSize: mainWindow.height/4
        font.bold: true
        text: qsTr(">")

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("clicked")
            }
        }

    }



}
