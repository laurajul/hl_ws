conda config --add envs_dirs /home/jovyan/.conda_envs
conda create --name pytti-tools python=3.8 -y
conda init bash
source ~/.bashrc
conda activate pytti-tools
git clone https://github.com/pytti-tools/pytti-notebook
cd pytti-notebook
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch -y
conda install tensorflow-gpu -y
conda install -c conda-forge opencv -y
conda install -c conda-forge pillow -y
conda install -c conda-forge imageio -y
pip install pytorch-lightning
conda install -c conda-forge kornia -y
conda install -c huggingface transformers -y
conda install scikit-learn pandas -y
pip install jupyter gdown loguru einops seaborn PyGLM ftfy regex tqdm hydra-core adjustText exrex matplotlib-label-lines
git clone --recurse-submodules -j8 https://github.com/pytti-tools/pytti-core 
pip install ./pytti-core/vendor/AdaBins 
pip install ./pytti-core/vendor/CLIP 
pip install ./pytti-core/vendor/GMA 
pip install ./pytti-core/vendor/taming-transformers 
pip install ./pytti-core 
pip install loguru
pip install omegaconf
pip install setuptools==59.5.0
python -m pytti.warmup
