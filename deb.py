import os

debs_dir = './aarch64/'

debs = os.listdir(debs_dir)

with open(debs_dir + 'README.md', 'w') as f:
  f.write('\n'.join(['- [' + i + '](./' + i + ')' for i in debs]))
