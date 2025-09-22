import 'payload.dart';
import 'service.dart';

void main() async {
  final worker = ServiceWorker();

  try {
    var input = Payload('1', 'Empty payload');
    await Future.delayed(Duration(milliseconds: 500));
    var output = await worker.addItem(input, 'test');
    dump(input, output);

    input =
        Payload('2', 'Non-empty payload')
          ..items.add(PayloadItem('Existing item #1', 'One'))
          ..items.add(PayloadItem('Existing item #2', 'Two'));
    await Future.delayed(Duration(milliseconds: 500));
    output = await worker.addItem(input, 'Three');
    dump(input, output);
  } finally {
    worker.stop();
  }
}

void dump(Payload input, Payload output) {
  print('INPUT: ${input.props}');
  if (input.items.isNotEmpty) {
    print('INPUT ITEMS:');
    input.items.map((i) => '   ${i.props}').forEach(print);
  }
  print('OUTPUT: ${output.props}');
  if (output.items.isNotEmpty) {
    print('OUTPUT ITEMS:');
    output.items.map((i) => '   ${i.props}').forEach(print);
  }
}
