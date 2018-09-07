using System.Data.Entity;

namespace ESFA.DC.Data.AppsEarningsHistory.Model.Interfaces
{
    public interface IAppsEarningsHistory
    {
        DbSet<AppsEarningsHistory> AppsEarningsHistory { get; set; }
    }
}
