import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) {

        for (int i = 1; i <= 11; i++) {
            File file = new File("ex" + i + ".md");
            try {
                Files.createFile(file.toPath());
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
