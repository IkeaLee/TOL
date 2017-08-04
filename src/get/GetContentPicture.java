package get;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GetContentPicture {
    public GetContentPicture() {
    }

    public void getHtmlPicture(String httpUrl, String address) {
        FileNumber num = new FileNumber();
        int count = num.NumberReadFromFile(address);

        try {
            System.out.println("获取网络图片");
            String fileName = String.valueOf(count).concat(httpUrl.substring(httpUrl.lastIndexOf(".")));
            URL url = new URL(httpUrl);
            BufferedInputStream in = new BufferedInputStream(url.openStream());
            FileOutputStream file = new FileOutputStream(new File(address + fileName));

            int t;
            while((t = in.read()) != -1) {
                file.write(t);
            }

            file.close();
            in.close();
            System.out.println("图片获取成功");
            ++count;
            num.NumberWriteToFile(count, address);
        } catch (MalformedURLException var11) {
            var11.printStackTrace();
        } catch (FileNotFoundException var12) {
            var12.printStackTrace();
        } catch (IOException var13) {
            var13.printStackTrace();
        }

    }

    public String getHtmlCode(String httpUrl) throws IOException {
        String content = "";
        URL uu = new URL(httpUrl);

        BufferedReader ii;
        String input;
        for(ii = new BufferedReader(new InputStreamReader(uu.openStream())); (input = ii.readLine()) != null; content = content + input) {
            ;
        }

        ii.close();
        return content;
    }

    public void get(String url, String address) throws IOException {
        String searchImgReg = "(?x)(src|SRC|background|BACKGROUND)=('|\")/?(([\\w-]+/)*([\\w-]+\\.(jpg|JPG|png|PNG|gif|GIF)))('|\")";
        String searchImgReg2 = "(?x)(src|SRC|background|BACKGROUND)=('|\")(http://([\\w-]+\\.)+[\\w-]+(:[0-9]+)*(/[\\w-]+)*(/[\\w-]+\\.(jpg|JPG|png|PNG|gif|GIF)))('|\")";
        String content = this.getHtmlCode(url);
        Pattern pattern = Pattern.compile(searchImgReg);
        Matcher matcher = pattern.matcher(content);

        while(matcher.find()) {
            System.out.println(matcher.group(3));
            this.getHtmlPicture(matcher.group(3), address);
        }

        pattern = Pattern.compile(searchImgReg2);
        matcher = pattern.matcher(content);

        while(matcher.find()) {
            System.out.println(matcher.group(3));
            this.getHtmlPicture(matcher.group(3), address);
        }

    }
}
