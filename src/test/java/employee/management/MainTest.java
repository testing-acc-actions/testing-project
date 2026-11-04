package employee.management;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class MainTest {

    @Test
    void applicationVersionShouldBe100() {
        assertEquals("1.0.1", Main.getApplicationVersion());
    }
}
