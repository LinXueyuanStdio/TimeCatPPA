import os

debs_dir = './aarch64/'

def generateREADMEforFolder(debs_dir):
  debs = os.listdir(debs_dir)
  with open(debs_dir + 'README.md', 'w') as f:
    f.write('\n'.join(['- [' + i + '](./' + i + ')' for i in debs if i != 'README.md']))

generateREADMEforFolder('./aarch64/')
generateREADMEforFolder('./dists/')
generateREADMEforFolder('./shell/')
generateREADMEforFolder('./boot/')