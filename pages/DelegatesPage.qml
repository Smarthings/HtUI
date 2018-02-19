import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

import "../UiTheme/"

ApplicationPage {
    property string titleHeader: qsTr("Delegates")
    color: Theme.background

    Column {
        width: parent.width
        height: parent.height
        spacing: 20

        Spacing {
            GroupBox {
                width: parent.width
                padding: 10
                radius: 5
                autoAlign: true
                autoAlignBorder: true
                title: "Controls Delegate"

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
            }
        }

        Spacing {
            GroupBox {
                width: parent.width
                padding: 5
                radius: 5
                autoAlign: true
                autoAlignBorder: true
                title: "Items Delegates - options"

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Item Delegate"
                }

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Configurações"
                    value: "Valor de configuração"
                }

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Configurações"
                    subtext: "Subtext"
                }

                ItemDelegate {
                    width: parent.width
                    implicitHeight: Theme.implicitHeightComponents * 1.2
                    text: "Item Delegate"
                    isItemMenu: true
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
    }
}
