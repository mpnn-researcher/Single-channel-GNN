# A single channel is all we need (ICML 2024)
Official Julia implementation of the paper: "A single channel is all we need".

## Getting Started

### Setup 
1.  Clone the repo:
```bash
git clone https://github.com/mpnn-researcher/Single-channel-GNN.git
```
2. Install Julia
- For Windows
     
```bash
winget install julia -s msstore
```

- For Linux and MacOS

```bash
curl -fsSL https://install.julialang.org | sh
```

3. Integrate Julia in Jupyter by running in Julia:

```Julia bash
using Pkg
Pkg.add("IJulia")
```

After that, open `main.ipynb` and select the Julia kernel

<!---
## Citation
If you find this useful for your research, please use the following.

```
@InProceedings{author_2024_ICML,
    author    = {Autor},
    title     = {A single channel is all we need},
    booktitle = {Proceedings of the International Conference on Machine Learning (ICML)},
    month     = {January},
    year      = {2023},
}
```

## Acknowledgments
 - Acknowledgments
--->

![](wl.gif)
