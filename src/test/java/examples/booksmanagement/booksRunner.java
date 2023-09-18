package examples.booksmanagement;

import com.intuit.karate.junit5.Karate;

public class booksRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("booksmanagement").relativeTo(getClass());
    }
}
