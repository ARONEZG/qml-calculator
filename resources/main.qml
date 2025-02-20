import QtQuick 2.10
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 400
    height: 300
    title: "QML Example"

    // Основной контейнер
    Rectangle {
        anchors.fill: parent
        color: "white"

        // Текстовый элемент
        Text {
            id: helloText
            anchors.centerIn: parent
            text: "Hello, QML!"
            font.pixelSize: 24
            color: "darkblue"
        }

        // Кнопка
        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
                bottom: parent.bottom
                bottomMargin: 20
            }
            text: "Click Me"
            onClicked: {
                // Изменение текста при нажатии на кнопку
                helloText.text = "Button Clicked!"
            }
        }
    }
}