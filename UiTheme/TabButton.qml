import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

TabButton {
    property string title: ""
    property bool bold: false

    contentItem: Text {
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        text: title
        font.bold: bold
        color: AppSettings.textColor
    }

    width: implicitWidth * 1.5
    padding: 10

    background: Rectangle {
        color: parent.checked? AppSettings.backgroundColor : "transparent"
    }
}
