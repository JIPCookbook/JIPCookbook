/*
 * Part of the Java Image Processing Cookbook, please see
 * http://www.lac.inpe.br/~rafael.santos/JIPCookbook.jsp
 * for information on usage and distribution.
 * Rafael Santos (rafael.santos@lac.inpe.br)
 */
package data.creation;

import java.awt.image.BufferedImage;
import java.awt.image.IndexColorModel;
import java.awt.image.WritableRaster;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

/**
 * This application creates a black-and-white image using a LUT or colormap.
 * The JAI API is not used in this example.
 */
public class CreateBWImageNoJAIWithLUT
  {
  public static void main(String[] args) throws IOException 
    {
    // The color table. Only black and white are represented, but the general idea is to have a 
    // colormap (or LUT or color table) and use indexes to this table as the pixels' values.
    int nColors = 2;
    byte[] reds   = new byte[]{0,(byte)255};
    byte[] greens = new byte[]{0,(byte)255};
    byte[] blues  = new byte[]{0,(byte)255};
    int width = 400; // Dimensions of the image
    int height = 400;
    // Let's create the IndexColorModel for this image.
    IndexColorModel colorModel = new IndexColorModel(2,nColors,reds,greens,blues);
    // Let's create a BufferedImage for an indexed color image.
    BufferedImage im = new BufferedImage(width,height,BufferedImage.TYPE_BYTE_INDEXED,colorModel);
    // We need its raster to set the pixels' values.
    WritableRaster raster = im.getRaster();
    // Put the pixels on the raster. Note that only values 0 and 1 are used for the pixels.
    for(int h=0;h<height;h++)
      for(int w=0;w<width;w++)
        if (((h/50)+(w/50)) % 2 == 0) raster.setSample(w,h,0,0); // checkerboard pattern.
        else raster.setSample(w,h,0,1);
    // Store the image. Use PNG format, it is more flexible for color indexed images.
    ImageIO.write(im,"PNG",new File("checkboardLUTX.png"));
    }

  }