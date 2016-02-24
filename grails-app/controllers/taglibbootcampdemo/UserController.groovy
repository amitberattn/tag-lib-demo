package taglibbootcampdemo

import groovy.UserDetail
import org.apache.commons.lang.math.RandomUtils

class UserController {

    //Show the usage Of Link, Create Link and resource
    def index() {

    }

    def list() {
        render view: 'list'
    }

    //Show the usage Of Logical Tags
    def displayDashboard() {

        int randomNumber = RandomUtils.nextInt()
        Boolean isAdmin = false
        if (randomNumber % 2 == 0) {
            isAdmin = true
        }
        render(view: 'displayDashboard', model: [isAdmin: isAdmin])
    }

    def displayUsersList() {

        List<UserDetail> usersList = []
        for (int i = 1; i <= 10; i++) {
            usersList.add(new UserDetail(firstName: "User_${i}", lastName: "lastName_${i}", id: i))
        }

        render(view: 'displayUsersList', model: [usersList: usersList])

    }

    def loginForm() {
        render(view: 'login' ,model:[ currentTime : new Date()])
    }

    def save(User user) {
        if(user?.hasErrors())
            render view: 'login' , model: [user :user , currentTime : new Date()]
        else
        render "Form saved"

    }

    def edit(User user) {


        render "Form Edited"
    }


    def taglibDemo(){

    }

    def showUserDetail(Boolean isAdmin ){
        render(view: 'displayDashboard', model: [isAdmin: isAdmin])
    }
}
