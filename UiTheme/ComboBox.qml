import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Controls.impl 2.2


ComboBox {
    id: control

    delegate: ItemDelegate {
        width: parent.width
        text: control.textRole ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole]) : modelData
        font.weight: control.currentIndex === index ? Font.DemiBold : Font.Normal
        highlighted: control.highlightedIndex === index
        hoverEnabled: control.hoverEnabled
    }

    indicator: Image {
        x: control.mirrored ? control.padding : control.width - width - control.padding
        y: control.topPadding + (control.availableHeight - height) / 2
        source: "image://default/double-arrow/" + (!control.editable && control.visualFocus ? Default.focusColor : Default.textColor)
        sourceSize.width: width
        sourceSize.height: height
        opacity: enabled ? 1 : 0.75
    }

    contentItem: TextField {
        leftPadding: !control.mirrored ? 12 : control.editable && activeFocus ? 3 : 1
        rightPadding: control.mirrored ? 12 : control.editable && activeFocus ? 3 : 1
        topPadding: 6 - control.padding
        bottomPadding: 6 - control.padding

        text: control.editable ? control.editText : control.displayText

        enabled: control.editable
        autoScroll: control.editable
        readOnly: control.popup.visible
        inputMethodHints: control.inputMethodHints
        validator: control.validator

        font: control.font
        color: !control.editable && control.visualFocus ? Default.focusColor : Default.textColor
        selectionColor: Default.focusColor
        selectedTextColor: Default.textLightColor
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        opacity: control.enabled ? 1 : 0.3

        background: Rectangle {
            visible: control.editable && !control.flat
            border.width: parent && parent.activeFocus ? 2 : 1
            border.color: parent && parent.activeFocus ? Default.focusColor : Default.buttonColor
        }
    }

    background: Rectangle {
        implicitWidth: 120
        implicitHeight: 25

        color: !control.editable && control.visualFocus ? (control.pressed ? Default.focusPressedColor : Default.focusLightColor) :
            (control.down || popup.visible ? Default.buttonPressedColor : Default.buttonColor)
        border.color: Default.focusColor
        border.width: !control.editable && control.visualFocus ? 2 : 0
        visible: !control.flat || control.down
    }

    popup: Popup {
        y: control.height
        width: control.width
        height: Math.min(contentItem.implicitHeight, control.Window.height - topMargin - bottomMargin)
        topMargin: 6
        bottomMargin: 6

        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex
            highlightRangeMode: ListView.ApplyRange
            highlightMoveDuration: 0

            Rectangle {
                z: 10
                width: parent.width
                height: parent.height
                color: "transparent"
                border.color: Default.frameLightColor
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }

        background: Rectangle { }
    }
}
