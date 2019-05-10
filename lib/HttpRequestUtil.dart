import 'dart:convert';
import 'dart:io';

class HttpRequestUtil {
  void get() async {
    print('------loadData_sys_get--------');

    var httpClient = new HttpClient();
    var params = Map<String, String>();

// uri方法1
    Uri uri = Uri(scheme: 'https', host: 'app.xxx.com', path: "");

// uri方法2
// Uri uri = Uri.https(
// 'app.xxx.com', homeNoviceListUrl);

// uri方法3
// Uri uri = Uri.parse(baseUrl + homeNoviceListUrl);

    var request = await httpClient.getUrl(uri);

    var headers = Map<String, String>();
    // headers['loginSource'] = 'IOS';
    // headers['useVersion'] = '3.1.0';
    // headers['isEncoded'] = '1';
    // headers['bundleId'] = 'com.xxx.xxx';

    // request.headers.add("loginSource", "IOS");
    // request.headers.add("useVersion", "3.1.0");
    // request.headers.add("isEncoded", "1");
    // request.headers.add("bundleId", "com.xxx.xxx");

    var response = await request.close();
    var responseBody = await response.transform(Utf8Decoder()).join();

    if (response.statusCode == HttpStatus.ok) {
      print('请求头：${response.headers}');

      print('111请求成功代发数据为:\n $responseBody');
      print('--------------');
      Map data = jsonDecode(responseBody);
      print('222请求成功代发数据为:\n $data');
    } else {
      print('\n\n\n11111==请求失败${response.statusCode}');
    }
  }

  void post() async {
    print('------loadData_sys_post--------');

    HttpClient httpClient = new HttpClient();

// queryParameters get请求的查询参数(适用于get请求？？？是吗？？？)
// Uri uri = Uri(
// scheme: "https", host: "app.xxx.com", path: homeRegularListUrl);
// HttpClientRequest request = await httpClient.postUrl(uri);

    var url = "";
    HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));

// 设置请求头
    request.headers.set("loginSource", "IOS");
    request.headers.set("useVersion", "3.1.0");
    request.headers.set("isEncoded", "1");
    request.headers.set("bundleId", "com.xxx.xxx");
// Content-Type大小写都ok
    request.headers.set('content-type', 'application/json');

    /// 添加请求体
    /// https://stackoverflow.com/questions/50278258/http-post-with-json-on-body-flutter-dart/50295533
    Map jsonMap = {'currentPage': '1'};
    request.add(utf8.encode(json.encode(jsonMap)));

    HttpClientResponse response = await request.close();
    String responseBody = await response.transform(utf8.decoder).join();
    if (response.statusCode == HttpStatus.ok) {
      print('请求成功');
      print(response.headers);
      print(responseBody);
    }
  }
}
