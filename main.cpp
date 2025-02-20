#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/resources/main.qml"))); // Загрузка QML из ресурсов
    engine.addImportPath("/usr/lib/x86_64-linux-gnu/qt5/qml");

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}