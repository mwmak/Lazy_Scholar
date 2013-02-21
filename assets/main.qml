// The title page of the app
import bb.cascades 1.0

NavigationPane {
    id: titleNav
    Page {
        Container {
            layout: StackLayout {
            }
            topPadding: 300
            Label {
                id: "title"
                text: "Learn App"
                textStyle.fontSizeValue: 50
                bottomMargin: 100
                horizontalAlignment: HorizontalAlignment.Center
            } //end label
            DropDown {
                id: "language_choose"
                onSelectedIndexChanged: {
                    console.log("SelectedIndex was changed to " + selectedIndex);
                }
                bottomMargin: 100
                //use a json file to populate data
                Option {
                    text: "Chinese"
                    value: "Chinese"
                    selected: true
                }

                // text + description
                Option {
                    text: "English"
                    value: "English"
                }
                preferredWidth: 400
                horizontalAlignment: HorizontalAlignment.Center
                expanded: false
            } //end dropdown
            Button {
                id: startButton
                text: "Start"
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    console.log("started game");
                    var newPage = hubDefn.createObject();
                    titleNav.push(newPage);
                }
            } //end button
            Button {
                id: menuButton
                text: "Menu"
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    console.log("Get to menu");
                    var newPage = emptyDefn.createObject();
                    newPage.label = "Menu Coming Soon"
                    titleNav.push(newPage);
                }
            } //end button
        }
    } //end page
    attachedObjects: [
        //Create the ComponentDefinition that represents the custom
        // component in Hub.qml
        ComponentDefinition {
            id: hubDefn
            source: "Hub.qml"
        },
        ComponentDefinition{
            id: emptyDefn
            source: "Empty.qml"
        }
    ] //end attachedObject
}//end navigation pane