import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:startedpack/commons/constant_data.dart';

class MainCardProfileWidget extends StatelessWidget {
  const MainCardProfileWidget({
    @required this.nama,
    Key key,
  }) : super(key: key);

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xff377c4e),
            radius: 40,
            child: Text(
              nama[0],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(ConstantData.mainDetailProfileRoute);
                },
                child: const Text(
                  'Tampilkan profile',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff377c4e),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
