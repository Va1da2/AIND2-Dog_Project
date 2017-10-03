# Get the dog dataset
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/dogImages.zip;
unzip dogImages.zip > /dev/null;
rm dogImages.zip;

# Get the human dataset
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/lfw.zip;
unzip lfw.zip > /dev/null;
rm lfw.zip;

# Get VGG16 features
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/DogVGG16Data.npz;
mv DogVGG16Data.npz /home/aind2/dog-project/bottleneck_features/;

# Activate aind-dog env
source activate aind-dog;
KERBAS_BACKEND=tensorflow python -c "from keras import backend";

