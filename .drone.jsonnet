local pipeline = import 'pipeline.libsonnet';

[
  pipeline.test('linux', 'amd64'),

  pipeline.build('docker', 'linux', 'amd64'),
  pipeline.notifications('docker', depends_on=[
    'linux-amd64',
  ]),
]
