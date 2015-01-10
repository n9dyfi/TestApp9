import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    tools: commonTools
    Rectangle {
        id: wallpaper
        gradient: Gradient {
            GradientStop {
                position: 0.000
                color: "gainsboro"
            }
            GradientStop {
                position: 1.000
                color: "slategray"
            }
        }
        anchors.fill: parent
    }
    Label {
        color: "white"
        font.pixelSize: 46
        text : "TestApp9"
        anchors.top: parent.top
    }
    Rectangle {
        id: myRectangle
        color: "slategray"
        width: parent.width
        height: 100
        anchors.centerIn: parent
    }
    Label {
        id: myLabel
        color: "red"
        font.pixelSize: 92
        text : ""
        anchors.centerIn: myRectangle
        Connections {
            target: counter
            onValueChanged: {
                myLabel.text = value; // signal formal parameter name
            }
        }
    }
    Button{
        id: resetButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height*3/4
        text: qsTr("Reset")
        onClicked: {
            counter.setValue(0)
        }
    }
    Button{
        id: incrementButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height*5/8
        text: qsTr("Increment")
        onClicked: {
            counter.increment()
        }
    }
    Button{
        id: decrementButton
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height*7/8
        text: qsTr("Decrement")
        onClicked: {
            counter.decrement()
        }
    }
}
