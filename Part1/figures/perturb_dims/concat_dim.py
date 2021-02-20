# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt

fg_list = []
dim_list = [
    5,
    32,
    36,
    11,
    15,
    22,
]
for i in dim_list:
  img = plt.imread('%d_dim_perturb.png' % i)
  fg_list.append(img)

rows = 2
columns = 3
fig = plt.figure(figsize=(60, 40))
for i in range(1, columns * rows + 1):
  img = fg_list[i - 1]
  fig.add_subplot(rows, columns, i)
  plt.axis('off')
  plt.imshow(img)
plt.show()
