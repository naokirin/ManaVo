Stream createTicker(Duration duration) =>
    Stream.periodic(duration).asBroadcastStream();
