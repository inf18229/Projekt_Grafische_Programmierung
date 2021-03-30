FILE *fp;
fp = fopen("c:\\temp\\xylog.txt","a");
fprintf(fp,"%f\t%f\t\n",x,y);
fclose(fp);
