 //skype zoom test
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () async {
                          if (await canLaunch(
                              'skype:live:.cid.7029bd12d344ba43')) {
                            final bool nativeAppLaunchSucceeded = await launch(
                              'skype:live:.cid.7029bd12d344ba43',
                            );
                            if (!nativeAppLaunchSucceeded) {
                              // Do something else
                            }
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          color: Colors.blue,
                          child: const Text(
                            "Skype",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () async {
                          if (await canLaunch(
                              'zoomus://zoom.us/join?confno=3612258626&pwd=1234')) {
                            final bool nativeAppLaunchSucceeded = await launch(
                              'zoomus://zoom.us/join?confno=3612258626&pwd=1234',
                            );
                            if (!nativeAppLaunchSucceeded) {
                              print("didn't work");
                            }
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          color: cc.primaryColor,
                          child: const Text(
                            "Zoom",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                  ],
                ),
