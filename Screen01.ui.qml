

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.7
import QtQuick.Controls 6.7
import InterfacePython

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    Text {
        id: label
        text: qsTr("Hello InterfacePython")
        font.family: Constants.font.family
        anchors.topMargin: 45
        anchors.horizontalCenter: parent.horizontalCenter

        SequentialAnimation {
            id: animation

            ColorAnimation {
                id: colorAnimation1
                target: rectangle
                property: "color"
                to: "#2294c6"
                from: Constants.backgroundColor
            }

            ColorAnimation {
                id: colorAnimation2
                target: rectangle
                property: "color"
                to: Constants.backgroundColor
                from: "#2294c6"
            }
        }
    }

    Text {
        id: text1
        x: 688
        y: 254
        width: 264
        height: 73
        text: qsTr("Calcule seu Salário")
        font.pixelSize: 60
        minimumPixelSize: 60
    }

    TextInput {
        id: txtSalario
        x: 822
        y: 379
        width: 256
        height: 32
        text: qsTr("Salário")
        font.pixelSize: 30
    }

    TextInput {
        id: txtDesconto
        x: 822
        y: 452
        width: 245
        height: 45
        text: qsTr("Desconto")
        font.pixelSize: 30
    }

    Button {
        id: btnCalcular
        x: 837
        y: 545
        width: 156
        height: 58
        text: qsTr("Calcular")
        font.pointSize: 20
    }

    Text {
        id: text2
        x: 822
        y: 349
        text: qsTr("Salário")
        font.pixelSize: 20
    }

    Text {
        id: text3
        x: 822
        y: 429
        text: qsTr("Desconto")
        font.pixelSize: 20
    }
    states: [
        State {
            name: "clicked"

            PropertyChanges {
                target: label
                text: qsTr("Button Checked")
            }
        }
    ]
}
