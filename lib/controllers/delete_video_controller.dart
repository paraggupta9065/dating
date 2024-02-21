import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class VideoDeleteController extends GetxController {
  RxBool isLoading = false.obs;

  Future<void> deleteVideo(String userId) async {
    try {
      isLoading(true);

      var response = await http.delete(
        Uri.parse('https://tru-dating.vaininnovation.in/api/delete-video/$userId'),
      );

      if (response.statusCode == 200) {
        print('Video deleted successfully');
      } else {
        print('Failed to delete video. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error deleting video: $e');
    } finally {
      isLoading(false);
    }
  }
}
