import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0

import "./UiTheme/"

ApplicationPage {
    property string titleHeader: qsTr("Components")
    id: application
    color: Theme.background

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5

            ToolButton {
                text: "\uE5D2"
                font.family: material_icons.name
                bottomPadding: -4
                radius: width /2
                font.pixelSize: 24

                onClicked: drawer.open()
            }

            Text {
                Layout.fillWidth: true
                padding: 10
                verticalAlignment: Text.AlignVCenter

                text: titleHeader
                font.pixelSize: 20
            }
        }
    }

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        ToolTip {
            id: toolTip
            y: window.height - contentHeight
            timeout: 5000
        }

        GroupBox {
            width: parent.width
            autoAlign: true
            autoAlignBorder: true
            title: "Delegates"

            SwitchDelegate {
                width: parent.width
                text: "Switch Delegate"
            }

            RadioDelegate {
                width: parent.width
                text: "Radio Delegate"
            }

            CheckDelegate {
                width: parent.width
                text: "Check Delegate"
            }

            ItemDelegate {
                width: parent.width
                text: "Item Delegate"
            }

            ItemDelegate {
                width: parent.width
                text: "Teste"
                subtext: "Subtext"
                value: "Valor de teste"
                isItemMenu: true

                leftIcon: Text {
                    text: "\uE869"
                    anchors.fill: parent
                    color: Theme.text
                    font.pixelSize: 18
                    horizontalAlignment: Qt.AlignHCenter
                    verticalAlignment: Qt.AlignVCenter
                }
            }

            ItemDelegate {
                width: parent.width
                text: "Teste"
                subtext: "Subtext"
                value: "Valor de teste"
                isItemMenu: true
            }

            ItemDelegate {
                width: parent.width
                text: "Teste"
                subtext: "Subtext"
                value: "Valor de teste"
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                radius: 5
                autoAlign: true
                autoAlignBorder: true

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Configurações"
                    subtext: "Subtext"
                    value: "Valor de configuração"
                    isItemMenu: true

                    leftIcon: Text {
                        text: "\uE869"
                        anchors.fill: parent
                        color: Theme.text
                        font.pixelSize: 18
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                    }
                }

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Android"
                    subtext: "Subtext"
                    value: "Valor de Android"
                    isItemMenu: true

                    leftIcon: Text {
                        text: "\uE859"
                        anchors.fill: parent
                        color: Theme.text
                        font.pixelSize: 18
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                    }
                }

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Translate"
                    subtext: "Subtext"
                    value: "Valor de translate"
                    isItemMenu: true

                    leftIcon: Text {
                        text: "\uE927"
                        anchors.fill: parent
                        color: Theme.text
                        font.pixelSize: 18
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                    }
                }

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Cadeado"
                    subtext: "Subtext"
                    value: "Valor de cadeado"
                    isItemMenu: true

                    leftIcon: Text {
                        text: "\uE88D"
                        anchors.fill: parent
                        color: Theme.text
                        font.pixelSize: 18
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                autoAlign: true
                autoAlignBorder: true
                radius: 5
                title: "Delegates"

                SwitchDelegate {
                    width: parent.width
                    text: "Switch Delegate"
                }

                RadioDelegate {
                    width: parent.width
                    text: "Radio Delegate"
                }

                CheckDelegate {
                    width: parent.width
                    text: "Check Delegate"
                }

                ItemDelegate {
                    width: parent.width
                    text: "Item Delegate"
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                title: "Input controls"

                Column {
                    width: parent.width
                    spacing: 10

                    TextField {
                        width: parent.width
                        placeholderText: "Teste"
                        darker: true
                    }

                    TextField {
                        width: parent.width
                        placeholderText: "Teste"
                    }

                    TextField {
                        width: parent.width
                        placeholderText: "Teste"
                        flat: true
                    }

                    ComboBox {
                        width: parent.width
                        model: ["Primeiro", "Segundo", "Terceiro", "Quarto"]
                    }

                    ScrollView {
                        width: parent.width
                        height: 50

                        TextArea {
                            placeholderText: "Textarea"
                        }
                    }

                    ScrollView {
                        width: parent.width
                        height: 50

                        TextArea {
                            placeholderText: "Textarea flat"
                            flat: true
                        }
                    }

                    ScrollView {
                        width: parent.width
                        height: 50

                        TextArea {
                            placeholderText: "Textarea without border"
                            noBorder: true
                        }
                    }

                    SpinBox {
                        width: parent.width
                        value: 50
                        editable: true
                    }

                    SpinBox {
                        width: parent.width
                        value: 50
                    }
                }
            }
        }

        GroupBox {
            width: parent.width
            padding: 20
            title: "Sliders"

            Column {
                width: parent.width
                spacing: 10

                Slider {
                    width: parent.width
                }

                RangeSlider {
                    width: parent.width
                }

                Row {
                    width: parent.width
                    Slider {
                        orientation: Qt.Vertical
                    }

                    RangeSlider {
                        orientation: Qt.Vertical
                    }
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5
                border: true

                title: "Modals"

                Row {
                    width: parent.width

                    Button {
                        text: "Open Dialog"
                        color: Theme.blue
                        textStyle.color: Theme.lighter

                        onClicked: dialog.open()
                    }

                    Button {
                        text: "Display"
                        color: Theme.blue
                        flat: true

                        onClicked: teste.open()
                    }

                    Button {
                        text: "ToolTip"
                        color: Theme.orange

                        onClicked: {
                            toolTip.text = "Teste de tooltip Teste de tooltip Teste de tooltip Teste de tooltip Teste de tooltip Teste de tooltip Teste de tooltip"
                            toolTip.visible = true
                        }
                    }
                }
            }
        }

        GroupBox {
            width: parent.width
            padding: 10

            title: "Buttons"

            GridLayout {
                width: parent.width
                columnSpacing: 5
                rowSpacing: 5
                columns: 3

                Button {
                    text: "lighter"
                    color: Theme.lighter
                }

                Button {
                    text: "grey"
                    color: Theme.grey
                    textStyle.color: "#fff"
                }

                Button {
                    text: "blue"
                    color: Theme.blue
                    textStyle.color: "#fff"
                }

                Button {
                    text: "tealblue"
                    color: Theme.tealblue
                }

                Button {
                    text: "green"
                    color: Theme.green
                }

                Button {
                    text: "yellow"
                    color: Theme.yellow
                }

                Button {
                    text: "orange"
                    color: Theme.orange
                }

                Button {
                    text: "purple"
                    color: Theme.purple
                }

                Button {
                    text: "pink"
                    color: Theme.pink
                }
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5
                title: "Qt logo"

                Image {
                    source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1280px-Qt_logo_2016.svg.png"
                    width: parent.width
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Column {
            width: parent.width
            padding: 10

            Frame {
                width: parent.width - parent.padding * 2

                Column {
                    width: parent.width

                    Switch {
                        width: parent.width
                        text: "Switch"

                        BorderBottom {}
                    }

                    CheckBox {
                        width: parent.width
                        text: "Checkbox"
                        BorderBottom {}
                    }

                    RadioButton {
                        width: parent.width
                        text: "Radio button"
                    }
                }
            }
        }

        Spacing{
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5

                title: "Swipe Delegate - Listview"

                Column {
                    width: parent.width

                    ListView {
                        id: listView
                        width: parent.width
                        height: 100
                        clip: true

                        model: ListModel {
                            ListElement { sender: "Swipe delegate"; title: "Arraste para a esquerda" }
                            ListElement { sender: "Swipe delegate"; title: "Arraste para a esquerda" }
                            ListElement { sender: "Swipe delegate"; title: "Arraste para a esquerda" }
                            ListElement { sender: "Swipe delegate"; title: "Arraste para a esquerda" }
                            ListElement { sender: "Swipe delegate"; title: "Arraste para a esquerda" }
                            ListElement { sender: "Swipe delegate"; title: "Arraste para a esquerda" }
                        }
                        delegate: SwipeDelegate {
                            id: swipeDelegate
                            text: model.sender + " - " + model.title
                            width: parent.width

                            ListView.onRemove: SequentialAnimation {
                                PropertyAction {
                                    target: swipeDelegate
                                    property: "ListView.delayRemove"
                                    value: true
                                }
                                NumberAnimation {
                                    target: swipeDelegate
                                    property: "height"
                                    to: 0
                                    easing.type: Easing.InOutQuad
                                }
                                PropertyAction {
                                    target: swipeDelegate
                                    property: "ListView.delayRemove"
                                    value: false
                                }
                            }

                            swipe.right: Label {
                                id: deleteLabel
                                text: qsTr("Remover")
                                color: "white"
                                verticalAlignment: Label.AlignVCenter
                                padding: 12
                                height: parent.height
                                anchors.right: parent.right

                                SwipeDelegate.onClicked: listView.model.remove(index)

                                background: Rectangle {
                                    color: deleteLabel.SwipeDelegate.pressed ? Theme.pressed(Theme.warning) : Theme.warning
                                }
                            }

                            BorderBottom {}
                        }
                    }
                }
            }
        }

        Dialog {
            id: dialog
            width: 300
            height: 300
            modal: true

            title: "Título do Dialog"

            standardButtons: Dialog.Ok | Dialog.Cancel

            Page {
                anchors.fill: parent
                clip: true

                GroupBox {
                    width: parent.width
                    radius: 5
                    autoAlign: true
                    autoAlignBorder: true

                    SwitchDelegate {
                        width: parent.width
                        text: "Switch Delegate"
                    }

                    CheckDelegate {
                        width: parent.width
                        text: "CheckDelegate"
                    }

                    RadioDelegate {
                        width: parent.width
                        text: "Radio delegate"
                    }

                    ItemDelegate {
                        width: parent.width
                        text: "Item Delegate"
                    }
                }
            }
        }

        Dialog {
            id: teste
            modal: true

            width: 300
            height: 100
            padding: 10

            title: "Tamanho da Tela"

            Page {
                anchors.fill: parent

                Column {
                    anchors.fill: parent
                    spacing: 10

                    Text {
                        text: "Width: " + window.width
                    }

                    Text {
                        text: "Height: " + window.height
                    }
                }
            }
        }
    }
}
