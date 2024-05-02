part of '../_index.dart';

class MobileEncrypt extends StatefulWidget {
  const MobileEncrypt({super.key});

  @override
  State<MobileEncrypt> createState() => _MobileEncryptState();
}

class _MobileEncryptState extends State<MobileEncrypt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.grey,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        label: Text('Plaintext'),
                        prefixIcon: Icon(Icons.description),
                      ),
                      controller: dt.ctrlinputEncrypt,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        label: Text('key'),
                        prefixIcon: Icon(Icons.key),
                      ),
                      controller: dt.ctrlkeyEncrypt,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        label: Text('bit'),
                        prefixIcon: Icon(Icons.send),
                      ),
                      controller: dt.ctrlbitEncrypt,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint(encryptData2(text: dt.ctrlinputEncrypt.text));
                      setState(() {});
                    },
                    child: const Text(
                      "Encrypt",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
        Container(
          height: 350,
          width: 350,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.grey,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: dt.ctrlinputEncrypt.text.isEmpty
              ? const Center(child: Text('Belum ada hasil'))
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('PLAINTEXT : ${dt.ctrlinputEncrypt.text}', style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 20),
                    Text('KEY : ${dt.ctrlkeyEncrypt.text}', style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 20),
                    Text('BIT : ${dt.ctrlbitEncrypt.text}', style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 20),
                    Text('HASIL ENCRYPT : ${encryptData2(text: dt.ctrlinputEncrypt.text)}',
                        style: const TextStyle(fontSize: 15)),
                    const SizedBox(height: 20),
                    Text('HASIL DECRYPT : ${decryptData2(text: dt.ctrlinputEncrypt.text)}',
                        style: const TextStyle(fontSize: 15)),
                  ],
                ),
        ),
        const SizedBox(height: 70),
        const Text(' NAMA : DHEE NURLITA'),
        const Text(' NPM : 227006008'),
        const SizedBox(height: 20),
      ],
    );
  }
}
