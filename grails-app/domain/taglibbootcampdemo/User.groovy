package taglibbootcampdemo

class User {

    static constraints = {
        firstName(maxSize: 20)
    }
    String firstName
    String lastName
    Integer id
    String password
    String description
    String gender
    String country
    String religion
    Boolean sendUpdates
}
