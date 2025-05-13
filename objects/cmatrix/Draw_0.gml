if (video_playing) {
    var results = video_draw();
    if (results[0] == 0) {
        draw_surface(results[1], 0, 0);
    }
}