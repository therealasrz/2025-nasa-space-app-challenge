import pandas as pd
import glob
import os

folder = "."
csv_files = glob.glob(os.path.join(folder, "*.csv"))


#join csvs on date column
dfs = [pd.read_csv(f) for f in csv_files]
df_merged = dfs[0]
for i in range(1, len(dfs)):
    df_merged = pd.merge(df_merged, dfs[i], on="time", how="outer")

df_merged.to_csv("east_merged_all.csv", index=False)


